import 'dart:convert';

Afianzado afianzadoFromJson(String str) {
  final jsonData = json.decode(str);
  return Afianzado.fromMap(jsonData);
}

String afianzadoToJson(Afianzado data) {
  final dyn = data.toMap();
  return json.encode(dyn);
}

class Afianzado {
  int auxiliar;

  //int clasificacion;
  String descClasificacion;

  //int tipo;
  String descTipo;
  int identificacion;
  String primerNombre;
  String segundoNombre;
  String primerApellido;
  String segundoApellido;
  String favorito;

  String foto;
  String nacimiento;

  //int lugar;
  String descLugar;

  //int genero;
  String descGenero;

  //int estadoCivil;
  String descEstadoCivil;

  String direccion;

  //int municipio;
  String descMunicipio;
  String movil;
  String fijo;
  String correo;

  String documento;

  int cupoOperativo;
  int cumuloActual;
  int cupoDisponible;

  bool sincronizar;


  Afianzado({this.auxiliar, this.descClasificacion, this.descTipo,
      this.identificacion, this.primerNombre, this.segundoNombre,
      this.primerApellido, this.segundoApellido, this.favorito, this.foto,
      this.nacimiento, this.descLugar, this.descGenero, this.descEstadoCivil,
      this.direccion, this.descMunicipio, this.movil, this.fijo, this.correo,
      this.documento, this.cupoOperativo, this.cumuloActual,
      this.cupoDisponible, this.sincronizar});

  factory Afianzado.fromMap(Map<String, dynamic> json) =>
      new Afianzado(
        auxiliar: json["auxiliar"],
        descClasificacion: json["descClasificacion"],
        descTipo: json["descTipo"],
        identificacion: json["identificacion"],
        primerNombre: json["primerNombre"],
        segundoNombre: json["segundoNombre"],
        primerApellido: json["primerApellido"],
        segundoApellido: json["segundoApellido"],
        favorito: json["favorito"],
        foto: json["foto"],
        nacimiento: json["nacimiento"],
        descLugar: json["descLugar"],
        descGenero: json["descGenero"],
        descEstadoCivil: json["descEstadoCivil"],
        direccion: json["direccion"],
        descMunicipio: json["descMunicipio"],
        movil: json["movil"],
        fijo: json["fijo"],
        correo: json["correo"],
        documento: json["documento"],
        cupoOperativo: json["cupoOperativo"],
        cumuloActual: json["cumuloActual"],
        cupoDisponible: json["cupoDisponible"],
        sincronizar: json["sincronizar"] == 1,
      );

  Map<String, dynamic> toMap() =>
      {
        "descClasificacion": descClasificacion,
        "descTipo": descTipo,
        "auxiliar": auxiliar,
        "identificacion": identificacion,
        "primerNombre": primerNombre,
        "segundoNombre": segundoNombre,
        "primerApellido": primerApellido,
        "segundoApellido": segundoApellido,
        "favorito": favorito,
        "foto": foto,
        "nacimiento": nacimiento,
        "descLugar": descLugar,
        "descGenero": descGenero,
        "descEstadoCivil": descEstadoCivil,
        "direccion": direccion,
        "descMunicipio": descMunicipio,
        "movil": movil,
        "fijo": fijo,
        "correo": correo,
        "documento": documento,
        "cupoOperativo": cupoOperativo,
        "cumuloActual": cumuloActual,
        "cupoDisponible": cupoDisponible,
      };
}
