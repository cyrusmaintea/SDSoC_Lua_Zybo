/*
 * main.c
 *
 *  Created on: Jan 10, 2017
 *      Author: DevolutionX
 */


#include <stdio.h>
#include <stdlib.h>
#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>

lua_State* L;
int status, result, i;
double sum;

int main (int argc, char *argv[]) {

    /* initialize Lua */
    L = luaL_newstate();

    /* load Lua base libraries */
    luaL_openlibs(L);

    status = luaL_loadfile(L, "lua/script.lua");
    if (status) {
        fprintf(stderr, "Couldn't load file: %s\n", lua_tostring(L, -1));
        exit(1);
    }

    lua_newtable(L);

    for (i = 1; i <= 5; i++) {
        lua_pushnumber(L, i);   /* Push the table index */
        lua_pushnumber(L, i*2); /* Push the cell value */
        lua_rawset(L, -3);      /* Stores the pair in the table */
    }

    lua_setglobal(L, "foo");

    /* Ask Lua to run our little script */
    result = lua_pcall(L, 0, LUA_MULTRET, 0);
    if (result) {
        fprintf(stderr, "Failed to run script: %s\n", lua_tostring(L, -1));
        exit(1);
    }

    sum = lua_tonumber(L, -1);

    printf("Script returned: %.0f\n", sum);

    lua_pop(L, 1);  /* Take the returned value out of the stack */
    lua_close(L);

	return 0;
}
