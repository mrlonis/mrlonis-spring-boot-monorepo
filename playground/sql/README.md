# Interview Questions

## Table of Contents

- [Interview Questions](#interview-questions)
  - [Table of Contents](#table-of-contents)
  - [Database Queries](#database-queries)
    - [Database Queries - Solutions](#database-queries---solutions)
  - [Concurrency](#concurrency)
    - [Concurrency Solutions](#concurrency-solutions)
      - [Concurrency Solution 1](#concurrency-solution-1)
      - [Concurrency Solution 1 Used](#concurrency-solution-1-used)
      - [Concurrency Solution 2](#concurrency-solution-2)
      - [Concurrency Solution 2 Used](#concurrency-solution-2-used)
      - [Concurrency Solution 3](#concurrency-solution-3)
      - [Concurrency Solution 3 Used](#concurrency-solution-3-used)
  - [APIs](#apis)
    - [APIs Solutions](#apis-solutions)
    - [APIs Solutions Used](#apis-solutions-used)

## Database Queries

Customer

| id  | name         | street        | cit         | state |
| :-- | :----------- | :------------ | :---------- | :---- |
| 1   | Martin Bros  | 406 Viking Rd | Cedar Falls | IO    |
| 2   | Martins Mart | 408 Viking Rd | Cedar Falls | IO    |

Sales_Order

| id  | customer_id | item_id | order_number        | quantity | amount |
| :-- | :---------- | :------ | :------------------ | :------- | :----- |
| 1   | 1           | 1       | B201901011135101231 | 1        | 20.00  |
| 2   | 1           | 2       | M201901021137103231 | 1        | 15.00  |

The tables above could have hundreds of thousands of rows. You have been tasked with retrieving some key data from these tables.

1. Find all Customers who do not have any Sales Orders
   1. Create a query using a LEFT JOIN in the query
   2. Create a query using a Subquery
2. Create a query to find the average price each Customer pays for each Item ordered
3. Create a query to add a new Sales Order with the following data
   - Amount : 50
   - Customer : 1
   - Quantity : 3
   - Sales Order : B201911210924551000
   - Item : 23
4. An error occurred mistakenly adding the item with id 2 to Sales Orders for the Martin Bros customer account. The mistake only occurred on Sales Orders with a prefix of 'M'. Create a query to delete instances of this item from Sales_Orders for the Martin Bros customer account.

### Database Queries - Solutions

[1.1](./Customers_With_No_Sales_Orders_Left_Join.sql)

[1.2](./Customers_With_No_Sales_Orders_Subquery_Not_In.sql)

[2](./Average_Price_Each_Customer_Pays_For_Each_Item_Ordered_No_Join.sql)

[3](./Add_New_Sales_Order.sql)

[4](./Delete_M_Order_Numbers_For_Martin_Bros_Customers.sql)

## Concurrency

Reflecting on the previous question, the Sales_Order table had a field order_number. As an alpha-numeric field, we are unable to leverage sequencing within the database. This sales order number must be a unique value. As such a race condition is possible when users submit an order at the same time. Please answer the following questions pertaining to how Race Conditions can be managed so Dead Lock does not occur.

1. What Java keyword can be used to ensure only one thread can execute a block of code at a time?
2. What Java modifier can be used to ensure reading a variable's value is always the latest value?
3. What Java package can be leveraged for ensuring thread safety for objects and variables?

### Concurrency Solutions

#### Concurrency Solution 1

In Java, you can use the synchronized keyword to ensure that only one thread can execute a block of code at a time. When a method or a block of code is marked as synchronized, it becomes a synchronized block, and Java provides built-in mechanisms to ensure that only one thread can enter and execute that block at any given time.

For example, you can use the synchronized keyword to synchronize a method like this:

```java
public synchronized void mySynchronizedMethod() {
// This block of code is synchronized, and only one thread can execute it at a time.
// ...
}
```

You can also create synchronized blocks within your code to synchronize on a specific object or monitor, like this:

```java
Object myLock = new Object();

synchronized (myLock) {
// This block of code is synchronized on the "myLock" object, and only one thread can execute it at a time.
// ...
}
```

By using synchronized, you can prevent concurrent access to shared resources or critical sections of your code, ensuring that thread safety is maintained.

#### Concurrency Solution 1 Used

The synchronized keyword ensures that only one thread can execute a block of code at a time. You can make synchronized methods or synchronized blocks of code.

#### Concurrency Solution 2

In Java, you can use the volatile modifier to ensure that reading a variable's value always retrieves the latest value from main memory. When a variable is declared as volatile, it guarantees that any read operation on that variable will return the most up-to-date value, and any write operation on that variable will be immediately visible to all threads.

Here's an example of how to use the volatile modifier:

```java
public class MyThreadSafeClass {
private volatile int sharedValue = 0;

    public void incrementValue() {
        sharedValue++;
    }

    public int getSharedValue() {
        return sharedValue;
    }

}
```

In this example, the sharedValue variable is declared as volatile, which ensures that when multiple threads access the getSharedValue method, they always see the most recent value of sharedValue. Without the volatile modifier, there might be situations where a thread caches the value and doesn't see updates made by other threads.

Keep in mind that while volatile is useful for ensuring visibility of changes between threads, it doesn't provide atomicity for compound operations (e.g., incrementing a variable) by itself. For compound operations, you may need to use additional synchronization mechanisms like synchronized blocks or use atomic classes from the java.util.concurrent.atomic package.

#### Concurrency Solution 2 Used

The volatile keyword can be used to ensure reading a variable's value is always the latest value. Additionally, the volatile keyword ensures any write operation on that variable will be immediately visible to all threads.

#### Concurrency Solution 3

In Java, the java.util.concurrent package provides a range of classes and interfaces that can be leveraged to ensure thread safety for objects and variables. This package offers various concurrency utilities and tools to help developers write multithreaded programs that are safe and efficient. Some of the key classes and interfaces in this package include:

Concurrent Collections: Classes like ConcurrentHashMap, ConcurrentLinkedQueue, and CopyOnWriteArrayList provide thread-safe alternatives to standard Java collections, ensuring safe concurrent access to data.

Executors and Thread Pools: The Executor framework and classes like ThreadPoolExecutor and ScheduledExecutorService help manage and control the execution of tasks across multiple threads.

Synchronization Utilities: Classes like Semaphore, CountDownLatch, and CyclicBarrier enable coordination and synchronization between threads.

Atomic Variables: The java.util.concurrent.atomic package provides atomic classes like AtomicInteger, AtomicLong, and AtomicReference, which offer atomic operations for variables without the need for explicit synchronization.

Locks: The package includes more flexible locking mechanisms, such as ReentrantLock, which can be used for fine-grained control over synchronization.

Thread-Safe Queues: Classes like BlockingQueue and its implementations (e.g., LinkedBlockingQueue, ArrayBlockingQueue) facilitate thread-safe producer-consumer scenarios.

Futures and Promises: The Future interface and related classes (e.g., CompletableFuture) enable asynchronous programming and handling of results from asynchronous tasks.

By using classes and utilities from the java.util.concurrent package, developers can design concurrent applications that are both thread-safe and efficient, reducing the risk of data corruption and synchronization issues commonly associated with multithreading.

#### Concurrency Solution 3 Used

The java.util.concurrent package can be leveraged to ensure thread safety for objects and variables.

## APIs

How could the following API endpoint be improved?

```java
@GET
@Path("report")
public Response searchItems(@QueryParam("search") String search,
                            @QueryParam("customerId") Integer customerId,
                            @QueryParam("brandFilters") String brandFilters,
                            @QueryParam("categoryFilters") String categoryFilters,
                            @QueryParam("orderGuide") Integer orderGuideId,
                            @QueryParam("orderGuideOnly") String orderGuideOnly,
                            @QueryParam("page") Integer page,
                            @QueryParam("rows") Integer pageSize,
                            @QueryParam("sort") String sortValue) {

   List selectedBrands = Arrays.asList(brandFilters.split(","));
   List selectedCategories = Arrays.asList(categoryFilters.split(","));
   boolean isOrderGuideItemsOnly = Boolean.parse(orderGuideOnly);

   Customer customer = customerDao.findById(customerId);
   List itemList = itemDao.searchItems(search, customerId, isOrderGuideItemsOnly, orderGuideId, page, pageSize, selectedBrands, selectedCategories);

   JsonArrayBuilder builder = Json.createArrayBuilder();

   for (Item item : itemList) {
      if (customer.canViewInactiveItems() || item.isActive()) {
         builder.add(Json.createObjectBuilder()
                .add("id", item.getId())
                .add("name", item.getName())
                .add("stockQty", item.getStockQuantity())
                .add("price", item.getPrice()));
      }
   }

   return Response.ok(builder.build()).build();
}
```

### APIs Solutions

The provided API endpoint could be improved in several ways to enhance its readability, maintainability, and performance. Here are some suggestions:

1. Use DTOs (Data Transfer Objects): Instead of directly using the Item entity, create a separate DTO class that represents the data to be returned in the response. This can help decouple the API from the internal data structure and make it easier to manage changes.
2. Validation: Add input validation to ensure that required parameters like search, customerId, and orderGuideOnly are present and have valid values. This will help prevent unexpected errors.
3. Pagination: Consider returning pagination metadata along with the list of items (e.g., total count, next/previous page links) to make it easier for clients to navigate through the results.
4. Error Handling: Implement proper error handling and return meaningful error responses when necessary, with appropriate HTTP status codes and error messages.
5. Logging: Add logging statements to capture important information or errors for debugging and monitoring purposes.
6. Query Parameters: Reduce the number of query parameters if possible. Having too many query parameters can make the API less user-friendly. Consider grouping related parameters into objects or using path parameters when appropriate.
7. Dependency Injection: Instead of directly creating instances of customerDao and itemDao within the method, use dependency injection to inject these dependencies. This promotes better testability and flexibility.
8. Use Enums for Boolean Query Parameters: Instead of parsing the orderGuideOnly query parameter manually, consider using an enumeration for boolean values. This can improve code readability and reduce potential errors.

Here's a refactored version of the endpoint with some of these improvements:

```java
@GET
@Path("report")
public Response searchItems(@QueryParam("search") String search,
                            @QueryParam("customerId") Integer customerId,
                            @QueryParam("brandFilters") String brandFilters,
                            @QueryParam("categoryFilters") String categoryFilters,
                            @QueryParam("orderGuide") Integer orderGuideId,
                            @QueryParam("orderGuideOnly") Boolean orderGuideOnly,
                            @QueryParam("page") Integer page,
                            @QueryParam("pageSize") Integer pageSize,
                            @QueryParam("sort") String sortValue) {
    // Input validation
    if (search == null || customerId == null || orderGuideOnly == null) {
        return Response.status(Response.Status.BAD_REQUEST)
                .entity("search, customerId, and orderGuideOnly are required query parameters.")
                .build();
    }

    // Retrieve customer
    Customer customer = customerDao.findById(customerId);

    // Search for items
    List<ItemDto> itemDtos = itemService.searchItems(search, customerId, orderGuideOnly, orderGuideId, page, pageSize, brandFilters, categoryFilters);

    // Convert to JSON
    JsonArrayBuilder builder = Json.createArrayBuilder();
    for (ItemDto itemDto : itemDtos) {
        if (customer.canViewInactiveItems() || itemDto.isActive()) {
            builder.add(Json.createObjectBuilder()
                    .add("id", itemDto.getId())
                    .add("name", itemDto.getName())
                    .add("stockQty", itemDto.getStockQuantity())
                    .add("price", itemDto.getPrice()));
        }
    }

    return Response.ok(builder.build()).build();
}
```

In this refactored code, I've assumed the existence of a separate ItemDto class for representing item data, as well as an ItemService for searching items. This promotes better separation of concerns and improves maintainability. Additionally, input validation and error handling have been added for robustness.

### APIs Solutions Used

Without any additional context, some broad improvements that I would suggest are as follows:

- Add input validation to ensure that any parameters that are required are present to prevent unnecessary work and to prevent other errors downstream. This is hard to do without further context of how the Dao objects work and the underlying database schema.
- Implement pagination. We already have the pagination query parameters here, we just need to properly use them. We are reducing the size retrieved from the database, but we could enhance the response entity to include useful links to grab the next page like with Spring Data Repository pagination.
- Implement error handling and return useful error messages along with appropriate HTTP status codes.
- Add logging around points of failure to make potential debugging easier in the future.
- Reduce the number of query parameters. To do this we could implement path parameters to reduce the number of query parameters. For example, customer ID would make a great candidate for a path parameter. The new path could be "report/{customerId}".
- Where possible, use the correct type for the query parameters instead of parsing them. For example, orderGuideOnly should be a boolean type instead of a string type.
