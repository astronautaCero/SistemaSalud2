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

ActiveRecord::Schema.define(version: 20160908183100) do

  create_table "informacion_contacts", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "persona_id"
    t.integer  "telefono"
    t.integer  "celular"
    t.index ["persona_id"], name: "index_informacion_contacts_on_persona_id"
  end

  create_table "personas", force: :cascade do |t|
    t.string   "tipo_persona"
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "sexo"
    t.string   "lugar_nacimiento"
    t.string   "poblacion"
    t.string   "ocupacion"
    t.string   "direccion"
    t.string   "foto"
    t.string   "biometria"
    t.string   "firma"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "personacn"
    t.string   "personaca"
    t.string   "personacp"
    t.integer  "documento_identificacion"
    t.string   "tipo_documento"
    t.integer  "user_id"
    t.date     "fecha_nacimiento"
    t.string   "avatar"
    t.index ["user_id"], name: "index_personas_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "roles_mask"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
