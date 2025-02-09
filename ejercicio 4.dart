/*

Cree una clase Libro con las propiedades titulo, autor, y anioPublicacion. Crea una clase Biblioteca que contenga una lista de libros y funciones para:
      a. Agregar libros.
      b. Eliminar libros.
      c. Buscar libros por autor.
      d. Listar todos los libros ordenados por año de publicación.
  
*/

void main() {
  Biblioteca biblioteca = Biblioteca();
  
  biblioteca.agregarLibro(Libro(titulo: "Cien años de soledad", autor: "Gabriel García Márquez", anioPublicacion: 1967));
  biblioteca.agregarLibro(Libro(titulo: "Don Quijote de la Mancha", autor: "Miguel de Cervantes", anioPublicacion: 1605));
  biblioteca.agregarLibro(Libro(titulo: "1984", autor: "George Orwell", anioPublicacion: 1949));
  biblioteca.agregarLibro(Libro(titulo: "Lolita", autor: "Vladimir Nabokov", anioPublicacion: 1955));
  biblioteca.agregarLibro(Libro(titulo: "Rebelion en la Granja", autor: "George Orwell", anioPublicacion: 1945));
  biblioteca.agregarLibro(Libro(titulo: "Narnia: El Caballo y el Muchacho", autor: "C. S. Lewis", anioPublicacion: 1954));
  biblioteca.agregarLibro(Libro(titulo: "Narnia: El Sobrino del Mago", autor: "C. S. Lewis", anioPublicacion: 1955));

  print("Todos los libros en la biblioteca:");
    for (int i = 0; i < biblioteca.libros.length; i++) {
      print("${biblioteca.libros[i].titulo} - ${biblioteca.libros[i].autor} (${biblioteca.libros[i].anioPublicacion})");
    }

    print("\nLibros de George Orwell:");
    List<Libro> librosGeorgeOrwell = biblioteca.buscarPorAutor("George Orwell");
    for (int i = 0; i < librosGeorgeOrwell.length; i++) {
      print("${librosGeorgeOrwell[i].titulo} (${librosGeorgeOrwell[i].anioPublicacion})");
    }

    print("\nLibros ordenados por año de publicación:");
    List<Libro> librosOrdenados = biblioteca.listarLibrosOrdenadosPorAnio();
    for (int i = 0; i < librosOrdenados.length; i++) {
      print("${librosOrdenados[i].titulo} - ${librosOrdenados[i].anioPublicacion}");
    }

    biblioteca.eliminarLibro("1984");
    print("\nDespués de eliminar '1984':");
    for (int i = 0; i < biblioteca.libros.length; i++) {
      print("${biblioteca.libros[i].titulo} - ${biblioteca.libros[i].anioPublicacion}");
    }
  }

class Libro {
  String titulo;
  String autor;
  int anioPublicacion;

  Libro({required this.titulo, required this.autor, required this.anioPublicacion});
}

class Biblioteca {
  List<Libro> libros = [];

  void agregarLibro(Libro libro) {
    libros.add(libro);
  }

  void eliminarLibro(String titulo) {
    bool encontrado = false;
    for (int i = 0; i < libros.length; i++) {
      if (libros[i].titulo == titulo){
        libros.removeAt(i);
        encontrado = true;
        print("Libro '$titulo' eliminado.");
        break;
      }
    }
    if (!encontrado) {
      print("El libro '$titulo' no se encuentra en la biblioteca.");
    }
  }

  List<Libro> buscarPorAutor(String autor) {
    List<Libro> encontrados = [];
      for (int i = 0; i < libros.length; i++) {
        if (libros[i].autor.toLowerCase() == autor.toLowerCase()) {
          encontrados.add(libros[i]);
        }
      }
    return encontrados;
  }

    List<Libro> listarLibrosOrdenadosPorAnio() {
      libros.sort((a, b) => a.anioPublicacion.compareTo(b.anioPublicacion));
      return libros;
    }
  
}