# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121031111036) do

  create_table "almanacs", :force => true do |t|
    t.integer  "n_settimana"
    t.integer  "month_id"
    t.integer  "giorno_inizio"
    t.integer  "giorno_fine"
    t.integer  "anno"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "calendars", :force => true do |t|
    t.integer  "almanac_id"
    t.integer  "prospect_structure_id"
    t.integer  "day_id"
    t.integer  "timeframe_id"
    t.integer  "grade_id"
    t.integer  "matter_id"
    t.boolean  "sostituzione"
    t.integer  "person_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "days", :force => true do |t|
    t.string   "giornata"
    t.integer  "prt"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "degrees", :force => true do |t|
    t.string   "grado_parentela"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "grades", :force => true do |t|
    t.string   "descr_classe"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "learnships", :force => true do |t|
    t.integer  "matter_id"
    t.integer  "grade_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mateships", :force => true do |t|
    t.integer  "grade_id"
    t.integer  "person_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "matters", :force => true do |t|
    t.string   "nome_materia"
    t.boolean  "compresenza"
    t.boolean  "giardino"
    t.string   "altri_costi"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "months", :force => true do |t|
    t.string   "mese"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "nome"
    t.string   "cognome"
    t.date     "data_nascita"
    t.string   "indirizzo"
    t.string   "n_civico"
    t.string   "cap"
    t.string   "citta"
    t.string   "provincia"
    t.string   "tel_fisso"
    t.string   "tel_cell"
    t.string   "email"
    t.string   "note"
    t.boolean  "insegnante"
    t.boolean  "genitore"
    t.boolean  "alunno"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "prospect_structures", :force => true do |t|
    t.string   "descrizione"
    t.boolean  "valido"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "relationships", :force => true do |t|
    t.integer  "person_id"
    t.integer  "related_id"
    t.integer  "degree_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teachingships", :force => true do |t|
    t.integer  "matter_id"
    t.integer  "person_id"
    t.integer  "costo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "timeframes", :force => true do |t|
    t.string   "orario"
    t.string   "inizio"
    t.string   "fine"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "weekly_prospects", :force => true do |t|
    t.integer  "prospect_structure_id"
    t.integer  "grade_id"
    t.integer  "matter_id"
    t.integer  "day_id"
    t.integer  "timeframe_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

end
