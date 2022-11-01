#include "iostream"
#include "opencv2/imgproc.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui.hpp"
#include <stdio.h>
#include <opencv2/opencv.hpp>

using namespace std;
using namespace cv;

void guardarImagen(Mat imagen,String nombre)
{
  imwrite( nombre + ".png", imagen );
  cout<<"-----IMAGEN " << nombre << ".png CREADA----"<<endl; 
}

Mat segmentacion(Mat imagen, int semilla[1])
{
  Mat resultado;
  cout<<semilla[0]<<"-"<<semilla[1]<<endl;
  return imagen;
}

void coordenadas(int ancho,int altura, Mat imagen)
{
  cout<<endl<<"--DATOS IMAGEN INGRESADA--"<<endl;
  cout<<"Ancho: " << ancho <<endl<<"Altura: " << altura <<endl;

  int anchoN,altoN;
  cout<<endl<<"-Datos para semilla-"<<endl;
  cout<<"Ingresar Ancho: ";
  cin>>anchoN;
  cout<<"Ingresar Alto: ";
  cin>>altoN;

  if((ancho < anchoN) || (altura < altoN))
  {
    cout<<endl<<"DATOS NO VALIDOS"<<endl;
    coordenadas(ancho,altura,imagen);
  }
  else
  {
    cout<<endl<<"-coordenadas Validas-"<<endl;
    int semilla[2];
    semilla[0] = anchoN;
    semilla[1] = altoN;
    Mat salida = segmentacion(imagen,semilla);
    guardarImagen(salida, "Resultado");
  }
}

int main( int argc, char** argv )
{
    //-----LECTURA DE IMAGEN-----

    if ( argc < 2 )
    {
        std::cerr << "Usage: " << argv[ 0 ] << " image_file" << std::endl;
        return( -1 );
    } 

  std::cout << "-------------------------" << std::endl;
  for( int a = 0; a < argc; a++ )
    std::cout << argv[ a ] << std::endl;
  std::cout << "-------------------------" << std::endl;

  Mat image;
  image = imread( argv[1], 1 );

  if ( !image.data )
  {
    std::cerr << "Error: No image data" << std::endl;
    return( -1);
  }
  //Inicio de Programa

  int ancho = image.size().width;
  int altura = image.size().height;

  Mat enGris;
  cvtColor( image, enGris, COLOR_BGR2GRAY );
  coordenadas(ancho,altura,enGris);
}