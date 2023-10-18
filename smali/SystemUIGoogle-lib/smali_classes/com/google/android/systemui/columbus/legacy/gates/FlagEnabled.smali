.class public final Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;
.super Lcom/google/android/systemui/columbus/legacy/gates/Gate;
.source ""


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public columbusEnabled:Z

.field public final columbusSettings:Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;

.field public final settingsChangeListener:Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;->columbusSettings:Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;->settingsChangeListener:Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;->columbusSettings:Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;->settingsChangeListener:Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/legacy/ColumbusSettings$ColumbusSettingsChangeListener;)V

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$onActivate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$onActivate$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;->columbusSettings:Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->listeners:Ljava/util/Set;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;->settingsChangeListener:Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$toString$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$toString$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
