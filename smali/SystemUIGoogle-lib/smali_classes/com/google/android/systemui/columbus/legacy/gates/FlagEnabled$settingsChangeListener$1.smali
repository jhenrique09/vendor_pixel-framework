.class public final Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/columbus/legacy/ColumbusSettings$ColumbusSettingsChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAlertSilenceEnabledChange(Z)V
    .locals 0

    return-void
.end method

.method public final onColumbusEnabledChange(Z)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1$onColumbusEnabledChange$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1$onColumbusEnabledChange$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onLowSensitivityChange(Z)V
    .locals 0

    return-void
.end method

.method public final onSelectedActionChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSelectedAppChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSelectedAppShortcutChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onUseApSensorChange()V
    .locals 0

    return-void
.end method
