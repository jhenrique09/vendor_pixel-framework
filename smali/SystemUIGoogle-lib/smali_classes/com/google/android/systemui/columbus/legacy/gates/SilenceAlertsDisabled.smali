.class public final Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;
.super Lcom/google/android/systemui/columbus/legacy/gates/Gate;
.source ""


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final columbusSettings:Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;

.field public final settingsChangeListener:Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled$settingsChangeListener$1;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;->columbusSettings:Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled$settingsChangeListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled$settingsChangeListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;->settingsChangeListener:Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled$settingsChangeListener$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;->columbusSettings:Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;->settingsChangeListener:Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled$settingsChangeListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/legacy/ColumbusSettings$ColumbusSettingsChangeListener;)V

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled$onActivate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled$onActivate$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v3, p0, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;->columbusSettings:Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->listeners:Ljava/util/Set;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;->settingsChangeListener:Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled$settingsChangeListener$1;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
