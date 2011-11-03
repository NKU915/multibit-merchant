package org.multibit.mbm.util;

import org.springframework.stereotype.Component;

import java.util.Random;
import java.util.UUID;

/**
 * Provides a default implementation
 */
@Component
public final class DefaultIdGenerator implements IdGenerator {

  @Override
  public Long random() {
    Random random = new Random();
    return random.nextLong();
  }
}
