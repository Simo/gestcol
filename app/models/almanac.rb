class Almanac < ActiveRecord::Base
  attr_accessible :n_settimana, :month_id, :giorno_inizio, :giorno_fine, :anno
  
  belongs_to :month
  
  has_many :calendars
  
  def max_day almanac
    if almanac.month_id == 2
      if almanac.anno == 2016 || almanac.anno == 2020 || almanac.anno == 2024
        29 #in caso di anno bisestile febbraio ha 29gg
      else 
        28
      end
    elsif (almanac.month_id == 4 || almanac.anno == 6 || almanac.month_id == 9 || almanac.month_id == 11) 
      30 #per aprile, giugno, settembre, novembre
    else
      31 #in tutti gli altri casi fine mese vale 31
    end
  end
  
  def inizio_settimana almanac
    if (almanac.giorno_fine + 1) > self.max_day(almanac)
      self.giorno_inizio = 1
    else
      self.giorno_inizio = (almanac.giorno_fine + 1)
    end
  end
  
  def fine_settimana almanac
    if (self.giorno_inizio + 6) > self.max_day(almanac)
      self.giorno_fine = (self.giorno_inizio + 6) - self.max_day(almanac)
    else
      self.giorno_fine = (self.giorno_inizio + 6)
    end
  end
  
  def valuta_cambio_anno almanac
    #esegue il controllo sul mese e valuta il cambio d'anno
    if almanac.month_id == 12
      1
    else
      almanac.month_id + 1
    end
  end
  
  def imposta_mese almanac
    if self.giorno_inizio != 1
      if((almanac.giorno_inizio - almanac.giorno_fine) < 0)
        self.month_id = almanac.month_id
      else
        self.month_id = self.valuta_cambio_anno(almanac)
      end
    else
      self.month_id = self.valuta_cambio_anno(almanac)
   end
  end
  
  def imposta_settimana almanac
    if(almanac.month_id == 12 && (almanac.giorno_inizio - almanac.giorno_fine) > 0)
      self.n_settimana = 1
      self.anno = (almanac.anno + 1)
    else
      self.n_settimana = (almanac.n_settimana + 1)
      self.anno = almanac.anno
    end
  end
  
end
