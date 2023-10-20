package com.example

import io.micronaut.http.annotation.Controller
import io.micronaut.http.annotation.Get
import io.micronaut.scheduling.TaskExecutors
import io.micronaut.scheduling.annotation.ExecuteOn
import java.time.Instant
import java.util.HashSet
import java.util.LinkedHashSet

@Controller("demo")
@ExecuteOn(TaskExecutors.IO)
class DemoController(private val demoService: DemoService) {

    @Get
    fun demo(): String {

        demoService.create()

        return "Hello"
    }
}