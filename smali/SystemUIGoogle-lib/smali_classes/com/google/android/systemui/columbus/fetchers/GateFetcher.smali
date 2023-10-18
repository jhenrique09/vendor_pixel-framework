.class public final Lcom/google/android/systemui/columbus/fetchers/GateFetcher;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final blockingGateMap:Ljava/util/Map;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/GateFetcher;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/GateFetcher;->blockingGateMap:Ljava/util/Map;

    return-void
.end method
