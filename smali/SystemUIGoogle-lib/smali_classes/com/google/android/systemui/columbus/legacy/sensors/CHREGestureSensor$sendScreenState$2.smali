.class final Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$sendScreenState$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$sendScreenState$2;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$sendScreenState$2;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;->screenStateUpdated:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
