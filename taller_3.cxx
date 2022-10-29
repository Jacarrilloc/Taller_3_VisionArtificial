#include "iostream"
#include "opencv2/imgproc.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui.hpp"
#include <stdio.h>
#include <opencv2/opencv.hpp>
#include <list>

using namespace std;
using namespace cv;

void guardarImagen(Mat imagen,String nombre)
{
  imwrite( nombre + ".png", imagen );
  cout<<"-----IMAGEN " << nombre << ".png CREADA----"<<endl; 
}

void opcionManual(Mat src)
{
  Mat mask;
  inRange(src, Scalar(255, 255, 255), Scalar(255, 255, 255), mask);
  src.setTo(Scalar(0, 0, 0), mask);
  guardarImagen(src,"Sinfondo");
}

void opcionAuto()
{

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

  int opcion;

    Mat imagen_gris;

  cv::cvtColor(image,imagen_gris, cv::COLOR_BGR2GRAY);
  guardarImagen(imagen_gris,"engris");

  while (opcion != 3)
  { 

  cout<<"SELECCIONE UNA OPCION:"<<endl;
  cout<<"1.Semilla de forma Manual"<<endl;
  cout<<"2.Semilla de forma Automatica"<<endl;
  cout<<"3.Salir"<<endl;
  cin >> opcion;
  cout<<endl;

  switch(opcion)
  {
    case 1: opcionManual(imagen_gris);
            break;

    case 2: opcionAuto();
            break;

    case 3:break;
  }
  }


}