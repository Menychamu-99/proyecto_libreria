class Book {
  String type;
  String name;
  String publisher;
  DateTime date;
  String imgUrl;
  num score;
  num ratings;
  String review;
  num height;
  Book(
    this.type,
    this.name,
    this.publisher,
    this.date,
    this.imgUrl,
    this.score,
    this.ratings,
    this.review,
    this.height,
  );
  static List<Book> generateBooks() {
    return [
      Book(
        'Fantasia',
        'Harry Potter y la piedra filosofal',
        'salamandra',
        DateTime(2000, 3, 23),
        'assets/images/h1.jpg',
        5,
        200,
        'El día de su cumpleaños, Harry Potter descubre que es hijo de dos conocidos hechiceros, de los que ha heredado poderes mágicos. Debe asistir a una famosa escuela de magia y hechicería, donde entabla una amistad con dos jóvenes que se convertirán en sus compañeros de aventura. Durante su primer año en Hogwarts, descubre que un malévolo y poderoso mago llamado Voldemort está en busca de una piedra filosofal que alarga la vida de quien la posee.',
        240,
      ),
      Book(
        'Fantasia',
        'Harry Potter y la camara secreta',
        'salamandra',
        DateTime(2000, 3, 23),
        'assets/images/h2.jpg',
        5,
        200,
        'Terminado el verano, Harry no ve la hora de abandonar la casa de sus odiosos tíos. Inesperadamente se presenta en su dormitorio Dobby, un elfo doméstico, que le anuncia que correrá un gran peligro si vuelve a Hogwarts.',
        240,
      ),
      Book(
        'Fantasia',
        'Harry Potter y el prisionero de azkaban',
        'salamandra',
        DateTime(2000, 3, 23),
        'assets/images/h3.jpg',
        5,
        200,
        'El tercer año de estudios de Harry en Hogwarts se ve amenazado por la fuga de Sirius Black de la prisión de Azkaban. Al parecer, se trata de un peligroso mago que fue cómplice de Lord Voldemort y que intentará vengarse de Harry Potter.',
        240,
      ),
      Book(
        'Fantasia',
        'Harry Potter y el caliz de fuego',
        'salamandra',
        DateTime(2000, 3, 23),
        'assets/images/h4.jpg',
        5,
        200,
        'Hogwarts se prepara para el Torneo de los Tres Magos, en el que competirán tres escuelas de hechicería. Para sorpresa de todos, Harry Potter es elegido para participar en la competencia, en la que deberá luchar contra dragones, internarse en el agua y enfrentarse a sus mayores miedos.',
        240,
      ),
      Book(
        'Fantasia',
        'Harry Potter y la orden del fenix',
        'salamandra',
        DateTime(2000, 3, 23),
        'assets/images/h5.jpg',
        5,
        200,
        'En su quinto año en Hogwarts, Harry descubre que muchos integrantes de la comunidad de magos no conocen la verdad acerca de su encuentro con Lord Voldemort. Cornelius Fudge, ministro de magia, designa a Dolores Umbridge como maestra de defensa contra de las artes oscuras porque cree que el profesor Dumbledore planea apoderarse de su trabajo. Pero sus enseñanzas son inadecuadas, por lo que Harry prepara a los estudiantes para defender la escuela en contra del mal.',
        240,
      ),
      Book(
        'Fantasia',
        'Harry Potter y el principe mestizo',
        'salamandra',
        DateTime(2000, 3, 23),
        'assets/images/h6.jpg',
        5,
        200,
        'Sexta entrega de la saga del joven mago, en la que Harry descubre un poderoso libro y, mientras trata de descubrir sus orígenes, colabora con Dumbledore en la búsqueda de una serie de objetos mágicos que ayudarán en la destrucción de Lord Voldemort.',
        240,
      ),
      Book(
        'Fantasia',
        'Harry Potter y las reliquias de la muerte',
        'salamandra',
        DateTime(2000, 3, 23),
        'assets/images/h7.jpg',
        5,
        200,
        'arry, Ron y Hermione se marchan de Hogwarts para iniciar su misión más importante: tienen que destruir los horrocruxes, el secreto del poder y la inmortalidad de Voldemort, en los que el temido mago oscuro guarda los fragmentos de su alma.',
        240,
      ),
    ];
  }
}
