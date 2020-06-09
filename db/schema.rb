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

ActiveRecord::Schema.define(version: 2019_02_13_214149) do

  create_table "alquilers", force: :cascade do |t|
    t.date "fecha"
    t.time "hora"
    t.integer "nhora"
    t.string "tpago"
    t.integer "usuario_id"
    t.integer "estacionamiento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estacionamiento_id"], name: "index_alquilers_on_estacionamiento_id"
    t.index ["usuario_id"], name: "index_alquilers_on_usuario_id"
  end

  create_table "autenticacions", force: :cascade do |t|
    t.string "usuario"
    t.string "password"
    t.string "tipoUsuario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.integer "puntuacion"
    t.string "descripcion"
    t.integer "usuario_id"
    t.integer "estacionamiento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estacionamiento_id"], name: "index_comentarios_on_estacionamiento_id"
    t.index ["usuario_id"], name: "index_comentarios_on_usuario_id"
  end

  create_table "dia", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estac_serv_adics", force: :cascade do |t|
    t.decimal "tarifa"
    t.integer "estacionamiento_id"
    t.integer "serv_adicionale_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estacionamiento_id"], name: "index_estac_serv_adics_on_estacionamiento_id"
    t.index ["serv_adicionale_id"], name: "index_estac_serv_adics_on_serv_adicionale_id"
  end

  create_table "estacionamientos", force: :cascade do |t|
    t.string "nombre"
    t.string "departamento"
    t.string "provincia"
    t.string "distrito"
    t.string "direccion"
    t.float "latitud"
    t.float "longitud"
    t.string "dias"
    t.time "hinicio"
    t.time "hcierre"
    t.string "telf"
    t.integer "nespac"
    t.decimal "largo"
    t.decimal "ancho"
    t.decimal "alto"
    t.string "ubicacion"
    t.decimal "precio"
    t.string "img"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_estacionamientos_on_usuario_id"
  end

  create_table "publicidads", force: :cascade do |t|
    t.string "titulo"
    t.string "contenido"
    t.date "fechaini"
    t.date "fechafin"
    t.decimal "tarifa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "serv_adicionales", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ubigeos", force: :cascade do |t|
    t.string "idDepartamento"
    t.string "Departamento"
    t.string "idProvincia"
    t.string "Provincia"
    t.string "idDistrito"
    t.string "Distrito"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nroDocumento"
    t.string "nombres"
    t.string "apellidoPaterno"
    t.string "apellidoMaterno"
    t.date "fechaNacimiento"
    t.string "celular"
    t.string "sexo"
    t.string "direccion"
    t.integer "autenticacion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["autenticacion_id"], name: "index_usuarios_on_autenticacion_id"
  end

end
