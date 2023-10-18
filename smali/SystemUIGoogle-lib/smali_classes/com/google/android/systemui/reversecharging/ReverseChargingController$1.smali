.class public final Lcom/google/android/systemui/reversecharging/ReverseChargingController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$1;->this$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPowerSaveChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$1;->this$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    iput-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mPowerSave:Z

    return-void
.end method

.method public final onWirelessChargingChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$1;->this$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    iput-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mWirelessCharging:Z

    return-void
.end method
