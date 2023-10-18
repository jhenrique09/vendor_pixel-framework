.class final Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration$adjustmentCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration$adjustmentCallback$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/systemui/columbus/legacy/sensors/config/LowSensitivitySettingAdjustment;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration$adjustmentCallback$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/sensors/config/GestureConfiguration;->updateSensitivity()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
