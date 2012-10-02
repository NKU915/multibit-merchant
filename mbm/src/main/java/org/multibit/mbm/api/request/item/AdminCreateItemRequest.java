package org.multibit.mbm.api.request.item;

import org.codehaus.jackson.annotate.JsonProperty;
import org.multibit.mbm.api.request.user.BaseUserRequest;

import javax.persistence.Column;

/**
 * <p>Request to provide the following to controllers:</p>
 * <ul>
 * <li>Provision of client state to create an initial bare bones Item by an administrator</li>
 * </ul>
 * <p>Note that subsequent updates to the Item can set more detail into the Item as required</p>
 *
 * @since 0.0.1
 *         
 */
public class AdminCreateItemRequest extends BaseItemRequest {

  // TODO Fill in extra admin fields here?
}
