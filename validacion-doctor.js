validacion = {
    bsonType: "object",
    required: [
      "id_doctor",
      "nombre", 
      "apellido_paterno", 
      "apellido_materno", 
    ],
    properties: {
      id_doctor: {
        bsonType: "long",
        description: "ID unico del doctor"
      },
      nombre: {
        bsonType: "string",
        description: "Nombre del doctor"
      },
      apellido_paterno: {
        bsonType: "string",
        description: "Apellido paterno del doctor"
      },
      apellido_materno: {
        bsonType: "string",
        description: "Apellido materno del doctor"
      },
      correo: {
        bsonType: "string",
        pattern: "^.+\@.+$",
        description: "Correo del doctor"
      },
      telefono: {
        bsonType: "long",
        description: "Telefono celular del doctor"
      },
      comision: {
        bsonType: "double",
        description: "Comision (%) del doctor" 
      }
    }
  }