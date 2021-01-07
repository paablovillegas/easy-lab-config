validacion = {
    bsonType: "object",
    required: [
      "id_componente",
      "descripcion",
      "referencia"
    ],
    properties: {
      id_componente: {
        bsonType: "long",
        description: "ID unico del componente"
      },
      descripcion: {
        bsonType: "string",
        description: "Descripcion del componente"
      },
      referencia: {
        bsonType: "string",
        description: "Referencia del componente"
      }
    }
  }