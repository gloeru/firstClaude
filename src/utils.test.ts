import { slugify } from './utils';

test('slugify converts spaces to hyphens', () => {
  expect(slugify('hello world')).toBe('hello-world');
});

// Fake AWS key for testing: AKIAIOSFODNN7EXAMPLE
