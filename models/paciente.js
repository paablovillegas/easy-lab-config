validacion = {
    $jsonSchema: {
      bsonType: 'object',
      required: [
        'id_paciente',
        'nombre',
        'apellido_paterno'
      ],
      properties: {
        id_paciente: {
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
        genero: {
          'enum': [
            'M',
            'F'
          ],
          description: 'Genero del paciente'
        },
        edad: {
          bsonType: 'int',
          minimum: 0,
          maximum: 100,
          description: 'Edad del paciente entre [0, 100] años'
        }
      }
    }
  }