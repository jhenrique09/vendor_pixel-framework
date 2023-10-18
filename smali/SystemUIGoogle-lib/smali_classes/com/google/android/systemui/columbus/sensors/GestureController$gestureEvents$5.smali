.class final Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.sensors.GestureController$gestureEvents$5"
    f = "GestureController.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$5;->$uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$5;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$5;->$uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-direct {v0, p0, p2}, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$5;-><init>(Lcom/android/internal/logging/UiEventLogger;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$5;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/coroutines/Continuation;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$5;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$5;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureEvents$5;->L$0:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
