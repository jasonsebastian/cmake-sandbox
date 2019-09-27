package com.example.android;

import org.junit.Test;

import static com.google.common.truth.Truth.assertThat;

public class MainActivityTest {

    @Test
    public void shouldAddNumbersCorrectly() {
        assertThat(MainActivity.add(1, 2)).isEqualTo(3);
    }
}