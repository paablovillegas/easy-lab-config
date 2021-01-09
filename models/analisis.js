validacion = {
    $jsonSchema: {
      bsonType: 'object',
      required: [
        'id_analisis',
        'analisis',
        'componentes'
      ],
      properties: {
        id_analisis: {
          bsonType: 'long',
          description: 'ID del analisis'
        },
        analisis: {
          bsonType: 'string',
          description: 'Nombre del analisis'
        },
        descripcion: {
          bsonType: 'string',
          description: 'Detalles del analisis'
        },
        componentes: {
          bsonType: 'array',
          description: 'Componentes del analisis',
          minItems: 1,
          items: {
            bsonType: 'object',
            required: [
              'id_componente',
              'componente'
            ],
            properties: {
              id_componente: {
                bsonType: 'long',
                description: 'ID del componente del analisis'
              },
              componente: {
                bsonType: 'string',
                description: 'Nombre del componente'
              }
            }
          }
        }
      }
    }
  }