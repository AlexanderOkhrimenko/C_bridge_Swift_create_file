//
//  factorial.c
//  write_to_file
//
//  Created by xander on 18.06.2018.
//  Copyright © 2018 xander. All rights reserved.
//

#include "factorial.h"


long factorial(int n) {
    if (n == 0 || n == 1) return 1;
    return n * factorial(n-1);
}
