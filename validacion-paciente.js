validacion = {
    bsonType: "object",
    required: [
      "id_paciente",
      "nombre", 
      "apellido_paterno", 
      "apellido_materno", 
      "genero"
    ],
    properties: {
      id_paciente: {
        bsonType: "long",
        description: "ID unico del paciente"
      },
      nombre: {
        bsonType: "string",
        description: "Nombre del paciente"
      },
      apellido_paterno: {
        bsonType: "string",
        description: "Apellido paterno del paciente"
      },
      apellido_materno: {
        bsonType: "string",
        description: "Apellido materno del paciente"
      },
      correo: {
        bsonType: "string",
        pattern: "^.+\@.+$",
        description: "Correo del paciente"
      },
      telefono: {
        bsonType: "long",
        description: "Telefono celular del paciente"
      },
      genero: {
        enum: [
          "Masculino", 
          "Femenino"
        ],
        description: "Genero del paciente"
      },
      edad: {
        bsonType: "int",
        minimum: 0,
        maximum: 100,
        description: "Edad del paciente entre [0, 100] años"
      }
    }
  }