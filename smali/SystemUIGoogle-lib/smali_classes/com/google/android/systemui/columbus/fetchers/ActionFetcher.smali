.class public final Lcom/google/android/systemui/columbus/fetchers/ActionFetcher;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final firstAvailableMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ActionFetcher;->firstAvailableMap:Ljava/util/Map;

    return-void
.end method
