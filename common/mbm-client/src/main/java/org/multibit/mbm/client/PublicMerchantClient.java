package org.multibit.mbm.client;

import org.multibit.mbm.client.handlers.cart.PublicCartHandler;
import org.multibit.mbm.client.handlers.item.ClientItemCollectionHandler;
import org.multibit.mbm.client.handlers.item.ClientItemHandler;
import org.multibit.mbm.client.handlers.user.PublicUserHandler;

import java.util.Locale;

/**
 * <p>RESTful client to provide the following to applications:</p>
 * <ul>
 * <li>Access to public API for the MultiBit Merchant</li>
 * </ul>
 * <p>This client provides access to public resources for an anonymous visitor. For example, the visitor
 * can search and view items, or manage their shopping cart through this API.</p>
 *
 * @since 0.0.1
 *         
 */
public class PublicMerchantClient extends BaseMerchantClient {

  protected PublicMerchantClient(Locale locale) {
    super(locale);
  }

  /**
   * @param locale The client locale for appropriate representation
   */
  public static PublicMerchantClient newInstance(Locale locale) {
    return new PublicMerchantClient(locale);
  }

  /**
   * @return A suitable handler for single item requests
   */
  public ClientItemHandler item() {
    return new ClientItemHandler(locale);
  }

  /**
   * @return A suitable handler for item collection searches
   */
  public ClientItemCollectionHandler items() {
    return new ClientItemCollectionHandler(locale);
  }

  /**
   * @return A suitable handler for item collection searches
   */
  public PublicUserHandler user() {
    return new PublicUserHandler(locale);
  }

  /**
   * @return A suitable handler for single cart requests by customers
   */
  public PublicCartHandler cart() {
    return new PublicCartHandler(locale);
  }

}
