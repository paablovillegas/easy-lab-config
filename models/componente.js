validacion = {
    $jsonSchema: {
      bsonType: 'object',
      required: [
        'id_componente',
        'componente'
      ],
      properties: {
        id_componente: {
          bsonType: 'long',
          description: 'ID del componente'
        },
        componente: {
          bsonType: 'string',
          description: 'Nombre del componente'
        },
        referencia: {
          bsonType: 'string',
          description: 'Estandar del componente en resultados'
        }
      }
    }
  }