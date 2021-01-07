validacion = {
    bsonType: "object",
    required: [
      "id_institucion",
      "institucion",
      "descuento"
    ],
    properties: {
      id_institucion: {
        bsonType: "long",
        description: "ID unico de la institucion"
      },
      institucion: {
        bsonType: "string",
        description: "Nombre de la institucion"
      },
      descuento: {
        bsonType: "double",
        description: "Descuento para la institucion"
      }
    }
  }