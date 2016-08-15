
#include "bbmonkey.h"

int bb_argc;
char **bb_argv;

void bbMain();

#ifdef __ANDROID__

extern "C" int SDL_main( int argc,char *argv[] ){

#else

int main( int argc,char **argv ){

#endif

	bb_argc=argc;
	bb_argv=argv;
	
	try{
	
		bbGC::init();
		
		bbDB::init();

		{		
			bbDBFrame( "_void()","" );
			
			for( bbInit *init=bbInit::first;init;init=init->succ ){
				init->init();
			}
		}
		
		bbMain();
	
	}catch( bbThrowable *t ){
	
		printf( "\n***** Uncaught Monkey 2 Throwable *****\n\n" );

	}catch(...){
	
		printf( "***** Uncaught Native Exception *****\n" );fflush( stdout );
		throw;
	}
	
	return 0;
}
