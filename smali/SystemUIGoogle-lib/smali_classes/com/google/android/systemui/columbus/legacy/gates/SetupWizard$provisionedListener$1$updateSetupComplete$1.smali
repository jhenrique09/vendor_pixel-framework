.class final Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1$updateSetupComplete$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.legacy.gates.SetupWizard$provisionedListener$1$updateSetupComplete$1"
    f = "SetupWizard.kt"
    l = {
        0x22
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1$updateSetupComplete$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1$updateSetupComplete$1;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1$updateSetupComplete$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1$updateSetupComplete$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1$updateSetupComplete$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1$updateSetupComplete$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1$updateSetupComplete$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1$updateSetupComplete$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1$updateSetupComplete$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1$updateSetupComplete$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1$updateSetupComplete$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1$updateSetupComplete$1;->label:I

    invoke-static {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->access$isSetupComplete(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->setupComplete:Z

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$provisionedListener$1$updateSetupComplete$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->access$updateBlocking(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
