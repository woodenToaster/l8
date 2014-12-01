#include <stdio.h>
#include <stdlib.h>

extern int tstconst();
extern void tstcall();

extern int tstadd(int,int);
extern int tstsub(int,int);
extern int tstmul(int,int);
extern int tstdiv(int,int);
extern int tstmod(int,int);
extern int tstshl(int,int);
extern int tstshr(int,int);
extern int tstneg(int);
extern int tstequal(int,int);
extern int tstnotequal(int,int);
extern int tstgteq(int,int);
extern int tstlteq(int,int);
extern int tstlt(int,int);
extern int tstgt(int,int);

int main( int argc, const char *argv[] ) {
    
    printf( "10 = %d\n", tstconst() );
    printf( "12 + 6 = %d\n", tstadd(12,6) );
    printf( "12 - 6 = %d\n", tstsub(12,6) );
    printf( "12 * 6 = %d\n", tstmul(12,6) );
    printf( "12 / 6 = %d\n", tstdiv(12,6) );
    printf( "12 %% 5 = %d\n", tstmod(12,5) );
    printf( "12 << 1 = %d\n", tstshl(12,1) );
    printf( "12 >> 1 = %d\n", tstshr(12,1) );
    tstcall();

    //lab 8
    printf( "-5 = %d\n", tstneg(5));
    printf( "Testing equal:  " );
    if(tstequal(5,5)) {
        printf( "equal\n" );
    } else {
        printf( "broken\n");
    }
    printf( "Tesing not equal:  " );
    if(tstnotequal(5,4)) {
        printf( "not equal\n");
    } else {
        printf( "broken\n");
    }
    printf( "Testing greater than or equal:  " );
    if(tstgteq(6,5)) {
        printf( "greater than or equal\n" );
    } else {
        printf( "broken\n" );
    }
    printf( "Testing greater than or equal:  " );
    if(tstgteq(5,5)) {
        printf( "greater than or equal\n" );
    } else {
        printf( "broken\n" );
    }
    printf( "Testing less than or equal:  " );
    if(tstlteq(6,7)) {
        printf( "less than or equal\n" );
    } else {
        printf( "broken\n" );
    }
    printf( "Testing less than or equal:  " );
    if(tstlteq(6,6)) {
        printf( "less than or equal\n" );
    } else {
        printf( "broken\n" );
    }
    printf( "Testing greater than:  " );
    if(tstgt(7,6)) {
        printf( "greater than\n" );
    } else {
        printf( "broken\n" );
    }
    printf( "Testing less than:  " );
    if(tstlt(6,7)) {
        printf( "less than\n" );
    } else {
        printf( "broken\n" );
    }

    return 0;
}
