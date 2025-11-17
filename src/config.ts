export const config = {
  TEST_VAR: import.meta,
  VITE_TEST_1: import.meta.env.VITE_TEST_VAR_1,
  VITE_TEST_2: import.meta.env.VITE_TEST_VAR_2,
  VITE_TEST_3: import.meta.env.VITE_TEST_VAR_3,
}
