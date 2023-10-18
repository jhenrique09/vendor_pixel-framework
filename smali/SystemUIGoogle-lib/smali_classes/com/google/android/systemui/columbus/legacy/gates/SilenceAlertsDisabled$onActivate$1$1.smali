.class final Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled$onActivate$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.legacy.gates.SilenceAlertsDisabled$onActivate$1$1"
    f = "SilenceAlertsDisabled.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled$onActivate$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled$onActivate$1$1;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled$onActivate$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled$onActivate$1$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled$onActivate$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled$onActivate$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled$onActivate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled$onActivate$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled$onActivate$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SilenceAlertsDisabled;->columbusSettings:Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    const-string v0, "columbus_silence_alerts"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
