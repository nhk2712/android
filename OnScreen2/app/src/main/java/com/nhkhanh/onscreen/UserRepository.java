package com.nhkhanh.onscreen;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Path;

class UserRepository<User> {
    private UserService userService;

    public interface UserService<User> {
        @GET("/user/{id}")
        Call<User> getUserById(@Path("id") String id);

        Call<User> getUser(@Path("username") String id);
    }

    public UserRepository(
            UserService userService
    ) {
        this.userService = userService;
    }

    public Call<User> getUserById(String id) {
        return userService.getUser(id);
    }

}
