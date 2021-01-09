validacion = {
    $jsonSchema: {
      bsonType: 'object',
      required: [
        'id_doctor',
        'nombre',
        'apellido_paterno'
      ],
      properties: {
        id_doctor: {
          bsonType: 'long',
          description: 'Nombre del paciente'
        },
        id_externo: {
          bsonType: 'long',
          description: 'Indice foráneo del paciente'
        },
        nombre: {
          bsonType: 'string',
          description: 'Nombre del paciente'
        },
        apellido_paterno: {
          bsonType: 'string',
          description: 'Apellido paterno del paciente'
        },
        apellido_materno: {
          bsonType: 'string',
          description: 'Apellido materno del paciente'
        },
        correo: {
          bsonType: 'string',
          pattern: '^.+@.+$',
          description: 'Correo del paciente'
        },
        telefono: {
          bsonType: 'long',
          description: 'Telefono del paciente'
        },
        comision: {
          bsonType: 'double',
          description: 'Comision del doctor por cada analisis a su orden'
        }
      }
    }
  }