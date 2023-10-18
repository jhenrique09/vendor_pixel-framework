.class public abstract Lcom/google/android/systemui/columbus/dagger/ColumbusModule_ProvideGestureSensorFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideGestureSensor(Ldagger/Lazy;)Lcom/google/android/systemui/columbus/sensors/NoOpGestureSensor;
    .locals 0

    check-cast p0, Ldagger/internal/DoubleCheck;

    invoke-virtual {p0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/sensors/NoOpGestureSensor;

    return-object p0
.end method
