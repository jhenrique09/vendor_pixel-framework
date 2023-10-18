.class public final Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final backupPackageName:Ljava/lang/String;

.field public final columbusEnabled:Lkotlinx/coroutines/flow/StateFlow;

.field public final lowSensitivity:Lkotlinx/coroutines/flow/StateFlow;

.field public final selectedAction:Lkotlinx/coroutines/flow/StateFlow;

.field public final selectedApp:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final selectedShortcut:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/google/android/systemui/columbus/fetchers/UserFetcher;Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Landroid/content/Context;Lcom/android/systemui/util/BackupManagerProxy;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "columbus_enabled"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->getBooleanSecureSettingFlow(Ljava/lang/String;Z)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->columbusEnabled:Lkotlinx/coroutines/flow/StateFlow;

    const-string v0, "columbus_action"

    const-string v2, ""

    invoke-virtual {p4, v0, v2}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->getStringSecureSettingFlow(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->selectedAction:Lkotlinx/coroutines/flow/StateFlow;

    const-string v0, "columbus_launch_app"

    invoke-virtual {p4, v0, v2}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->getStringSecureSettingFlow(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    new-instance v3, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$1;

    invoke-direct {v3, v0, v1}, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;I)V

    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v3, p1, v0, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->selectedApp:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string v0, "columbus_launch_app_shortcut"

    invoke-virtual {p4, v0, v2}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->getStringSecureSettingFlow(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->selectedShortcut:Lkotlinx/coroutines/flow/StateFlow;

    const-string v0, "columbus_launch_profile_id"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p4, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->cachedIntFlows:Ljava/util/Map;

    new-instance v3, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getIntSecureSettingFlow$1;

    invoke-direct {v3, p4, v0}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getIntSecureSettingFlow$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Landroid/net/Uri;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    const-string v0, "columbus_low_sensitivity"

    invoke-virtual {p4, v0, v1}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->getBooleanSecureSettingFlow(Ljava/lang/String;Z)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->lowSensitivity:Lkotlinx/coroutines/flow/StateFlow;

    const-string v0, "columbus_silence_alerts"

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->getBooleanSecureSettingFlow(Ljava/lang/String;Z)Lkotlinx/coroutines/flow/StateFlow;

    const-string v0, "columbus_package_stats"

    const-string v2, "[]"

    invoke-virtual {p4, v0, v2}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->getStringSecureSettingFlow(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p4

    new-instance v0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$1;

    invoke-direct {v0, p4, v1}, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;I)V

    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p4

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0, p1, p4, v1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {p5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->backupPackageName:Ljava/lang/String;

    new-instance p4, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;

    invoke-direct {p4, p0, p3, p6, v4}, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;Lcom/google/android/systemui/columbus/fetchers/UserFetcher;Lcom/android/systemui/util/BackupManagerProxy;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x2

    invoke-static {p1, p2, v4, p4, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
