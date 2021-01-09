validacion = {
    $jsonSchema: {
      bsonType: 'object',
      description: 'Orden creada por cada conjunto de analisis requerido por paciente',
      required: [
        'folio',
        'paciente'
      ],
      properties: {
        folio: {
          bsonType: 'long',
          description: 'Folio de la orden'
        },
        paciente: {
          bsonType: 'object',
          description: 'Paciente que solicito la orden',
          required: [
            'nombre',
            'apellido_paterno'
          ],
          properties: {
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
            }
          }
        }
      }
    }
  }