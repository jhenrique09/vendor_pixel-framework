.class final Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1$onColumbusEnabledChange$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.legacy.gates.FlagEnabled$settingsChangeListener$1$onColumbusEnabledChange$1"
    f = "FlagEnabled.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isEnabled:Z

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1$onColumbusEnabledChange$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;

    iput-boolean p2, p0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1$onColumbusEnabledChange$1;->$isEnabled:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1$onColumbusEnabledChange$1;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1$onColumbusEnabledChange$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1$onColumbusEnabledChange$1;->$isEnabled:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1$onColumbusEnabledChange$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1$onColumbusEnabledChange$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1$onColumbusEnabledChange$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1$onColumbusEnabledChange$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1$onColumbusEnabledChange$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1$onColumbusEnabledChange$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$settingsChangeListener$1$onColumbusEnabledChange$1;->$isEnabled:Z

    iput-boolean p0, p1, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;->columbusEnabled:Z

    new-instance p0, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$updateBlocking$1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled$updateBlocking$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/FlagEnabled;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object p1, p1, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p1, v0, v0, p0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
