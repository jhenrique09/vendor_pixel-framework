.class public final Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final cachedBooleanFlows:Ljava/util/Map;

.field public final cachedIntFlows:Ljava/util/Map;

.field public final cachedStringFlows:Ljava/util/Map;

.field public final contentResolver:Landroid/content/ContentResolver;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final mainHandler:Landroid/os/Handler;

.field public final userFetcher:Lcom/google/android/systemui/columbus/fetchers/UserFetcher;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/content/Context;Lcom/google/android/systemui/columbus/fetchers/UserFetcher;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->userFetcher:Lcom/google/android/systemui/columbus/fetchers/UserFetcher;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->contentResolver:Landroid/content/ContentResolver;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->cachedBooleanFlows:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->cachedIntFlows:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->cachedStringFlows:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getBooleanSecureSettingFlow(Ljava/lang/String;Z)Lkotlinx/coroutines/flow/StateFlow;
    .locals 3

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->cachedBooleanFlows:Ljava/util/Map;

    new-instance v2, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getBooleanSecureSettingFlow$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getBooleanSecureSettingFlow$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Ljava/lang/String;Landroid/net/Uri;Z)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getStringSecureSettingFlow(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlow;
    .locals 3

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->cachedStringFlows:Ljava/util/Map;

    new-instance v2, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getStringSecureSettingFlow$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getStringSecureSettingFlow$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method
