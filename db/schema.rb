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

ActiveRecord::Schema.define(version: 20170227033627) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "escolaridades", force: :cascade do |t|
    t.string   "descricao_escolaridade"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "estadocivils", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pacientes", force: :cascade do |t|
    t.integer  "pessoa_id"
    t.string   "numerocartaosus"
    t.string   "profissao"
    t.string   "enderecoprofissional"
    t.string   "enderecoresidencial"
    t.string   "nomeconjugue"
    t.string   "contatoconjugue"
    t.string   "string"
    t.string   "profissaoconjugue"
    t.boolean  "possuifilhos"
    t.integer  "filhosquantidade"
    t.string   "idadefilhos"
    t.string   "observacao"
    t.string   "localnascimento"
    t.datetime "datacadastro"
    t.date     "dataobito"
    t.boolean  "ativo"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["pessoa_id"], name: "index_pacientes_on_pessoa_id", using: :btree
  end

  create_table "pessoas", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "rg"
    t.string   "telefoneresidencial"
    t.string   "telefonecelular"
    t.date     "datanascimento"
    t.integer  "sexo"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "descricao"
    t.decimal  "valor"
    t.boolean  "doacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profissionals", force: :cascade do |t|
    t.string   "especializacao"
    t.integer  "pessoa_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["pessoa_id"], name: "index_profissionals_on_pessoa_id", using: :btree
  end

  create_table "questaos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questionarios", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipocancers", force: :cascade do |t|
    t.string   "descricao"
    t.string   "nivelgravidade"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tiposervicos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "pacientes", "pessoas"
  add_foreign_key "profissionals", "pessoas"
end
