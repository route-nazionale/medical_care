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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140807072553) do

  create_table "consumos", force: true do |t|
    t.string   "nome"
    t.integer  "magazzino_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "humen", force: true do |t|
    t.string   "cu"
    t.integer  "cucode"
    t.string   "nome"
    t.string   "cognome"
    t.integer  "quartiere"
    t.integer  "contrada"
    t.string   "codicecensimento"
    t.string   "idgruppo"
    t.string   "idunita"
    t.boolean  "realcredit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name",       null: false
    t.string   "telephone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "magazzinos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medicos", force: true do |t|
    t.string   "nome"
    t.string   "cognome"
    t.string   "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personal_infos", force: true do |t|
    t.string   "tessera_sanitaria"
    t.text     "annotazioni_mediche"
    t.integer  "human_id"
    t.integer  "last_editor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "personal_infos", ["human_id"], name: "index_personal_infos_on_human_id"

  create_table "scheda_medicas", force: true do |t|
    t.string   "cu",                     default: ""
    t.string   "intolleranzealimentari", default: ""
    t.string   "allergiealimentari",     default: ""
    t.string   "allergiefarmaci",        default: ""
    t.boolean  "fisiche",                default: false
    t.boolean  "lis",                    default: false
    t.boolean  "psichiche",              default: false
    t.boolean  "sensoriali",             default: false
    t.string   "patologie",              default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visits", force: true do |t|
    t.integer  "human_id",                 null: false
    t.integer  "location_id",              null: false
    t.date     "date",                     null: false
    t.time     "hour",                     null: false
    t.integer  "doctor",                   null: false
    t.text     "anamnesi"
    t.text     "diagnosi"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "triage",       default: 0, null: false
    t.text     "terapia"
    t.boolean  "osservazione"
  end

  add_index "visits", ["doctor"], name: "index_visits_on_doctor"
  add_index "visits", ["human_id"], name: "index_visits_on_human_id"
  add_index "visits", ["location_id"], name: "index_visits_on_location_id"

end
