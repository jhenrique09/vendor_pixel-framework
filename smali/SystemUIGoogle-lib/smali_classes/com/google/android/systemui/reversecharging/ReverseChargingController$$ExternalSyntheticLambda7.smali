.class public final synthetic Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda7;->f$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda7;->f$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    check-cast p1, Lcom/google/android/systemui/reversecharging/ReverseChargingController$ReverseChargingChangeCallback;

    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    iget v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    check-cast p1, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;

    invoke-virtual {p1, v1, p0, v0}, Lcom/google/android/systemui/statusbar/policy/BatteryControllerImplGoogle;->onReverseChargingChanged(ILjava/lang/String;Z)V

    return-void
.end method
