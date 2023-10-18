.class public final Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final cachedFlows:Ljava/util/Map;

.field public final context:Landroid/content/Context;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/BroadcastFetcher;->cachedFlows:Ljava/util/Map;

    return-void
.end method
