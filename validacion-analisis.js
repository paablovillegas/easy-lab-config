validacion = {
    bsonType: "object",
    required: [
      "id_analisis",
      "analisis",
      "descripcion",
      "componentes"
    ],
    properties: {
      id_analisis: {
        bsonType: "long",
        description: "ID unico del analisis"
      },
      analisis: {
        bsonType: "string",
        description: "Nombre del analisis"
      },
      descripcion: {
        bsonType: "string",
        description: "Descripcion del analisis"
      },
      componentes: {
        bsonType: "array",
        description: "Componentes del analisis",
        minItems: 1,
        uniqueItems: true,
        items: {
          bsonType: "object",
          //TODO: agregar componente
        }
      }
    }
  }