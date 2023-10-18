.class public abstract Lcom/google/android/systemui/smartspace/SmallHash;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static hash(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    const/16 v0, 0x2000

    invoke-static {p0, v0}, Ljava/lang/Math;->floorMod(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method
