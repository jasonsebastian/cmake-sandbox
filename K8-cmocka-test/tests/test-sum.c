#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>

#include "../src/calc.h"

static void torture_sum_1_1(void **state) {
	assert_int_equal(sum(1, 1), 2);
}

static void torture_sum_1_2(void **state) {
	assert_int_equal(sum(1, 2), 3);
}

static void torture_sum_3_5(void **state) {
	assert_int_equal(sum(3, 5), 8);
}

int main(void) {
	const struct CMUnitTest tests[] = {
		cmocka_unit_test(torture_sum_1_1),
		cmocka_unit_test(torture_sum_1_2),
		cmocka_unit_test(torture_sum_3_5),
	};

	return cmocka_run_group_tests(tests, NULL, NULL);
}
