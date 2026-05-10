package androidx.window.layout;

import androidx.window.layout.ExtensionWindowLayoutInfoBackend;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
final class ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$disposableToken$1 extends s implements l {
    final /* synthetic */ ExtensionWindowLayoutInfoBackend.MulticastConsumer $consumer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$disposableToken$1(ExtensionWindowLayoutInfoBackend.MulticastConsumer multicastConsumer) {
        super(1);
        this.$consumer = multicastConsumer;
    }

    @Override // w8.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((androidx.window.extensions.layout.WindowLayoutInfo) obj);
        return h0.INSTANCE;
    }

    public final void invoke(androidx.window.extensions.layout.WindowLayoutInfo value) {
        r.e(value, "value");
        this.$consumer.accept(value);
    }
}
