.class public abstract Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public listener:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public abstract isListening()Z
.end method

.method public setGestureListener(Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/GestureSensor;->listener:Lcom/google/android/systemui/columbus/legacy/sensors/GestureController$gestureSensorListener$1;

    return-void
.end method

.method public abstract startListening()V
.end method

.method public abstract stopListening()V
.end method
