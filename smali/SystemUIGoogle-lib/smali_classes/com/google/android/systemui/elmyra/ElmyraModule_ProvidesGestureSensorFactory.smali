.class public abstract Lcom/google/android/systemui/elmyra/ElmyraModule_ProvidesGestureSensorFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static providesGestureSensor(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;)Lcom/google/android/systemui/elmyra/sensors/GestureSensor;
    .locals 0

    invoke-static {p0}, Lcom/google/android/systemui/elmyra/sensors/JNIGestureSensor;->isAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Ldagger/internal/DoubleCheck;

    invoke-virtual {p1}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    goto :goto_0

    :cond_0
    check-cast p2, Ldagger/internal/DoubleCheck;

    invoke-virtual {p2}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    :goto_0
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method
