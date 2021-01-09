validacion = {
    $jsonSchema: {
      bsonType: 'object',
      required: [
        'id_institucion',
        'institucion'
      ],
      properties: {
        id_institucion: {
          bsonType: 'long',
          description: 'ID unico de la institucion'
        },
        institucion: {
          bsonType: 'string',
          description: 'Nombre de la institucion'
        },
        comision: {
          bsonType: 'double',
          description: 'Descuento aplicado a la institucion por analisis'
        }
      }
    }
  }