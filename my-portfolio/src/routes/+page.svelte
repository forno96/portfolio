<p id="welcome">Welcome</p>
<div id="presentation">
	<h1>Francesco Fornari</h1>

	<div>
		<p class="lang">ESP</p>
		<p>Soy un desarollador de software localizado en Cuenca, España.</p>

		<p>
			Tengo el grado de Ciencias de la Computación de la Universidad de Bolonia. Desde el año 2020
			trabajo en el campo del desarrollo de software para empresas, con el objetivo de ayudarles a
			comprender y utilizar de forma más eficiente sus datos.
		</p>
		<p>
			Mis principales herramientas de trabajo son <b>Python</b>, SQL DB como <b>Postgres</b> or
			<b>Oracle</b>, NoSQL DB como
			<b>Mongo</b>. Para el desarrollo web manejo <b>HTML, CSS y Javascript</b>.
		</p>
		<p>Mi lengua materna es el <b>italiano</b>. Además, hablo <b>espanol</b> e <b>inglés</b>.</p>
		<p>He realizado esta página web como muestra de mis habilidades.</p>
		<p>
			Puedes contactar conmigo via <a
				href="https://www.linkedin.com/in/francesco-fornari-806556110/">Linkedin</a
			>
			o por email
			<a href="mailto:francesco.fornari.96@gmail.com">francesco.fornari.96@gmail.com</a>
		</p>
	</div>

	<div>
		<p class="lang">ENG</p>
		<p>I’m a developer based in Cuenca, Spain.</p>
		<p>Specialized in Software Engineer, AI based apps and Data Engineer.</p>
		<p>
			I have a bachelor degree in Computer Science from University of Bologna and I worked since
			2020 in the field of developing business software for make people understand better their
			data.
		</p>
		<p>
			My main tools are <b>Python</b>, SQL DB like <b>Postgres</b> or <b>Oracle</b>, NoSQL DB like
			<b>Mongo</b> and for web development <b>HTML, CSS and Javascript</b>.
		</p>
		<p>My natural language is <b>Italian</b>, I also know <b>Spanish</b> and <b>English</b>.</p>
		<p>This is a website made and hosted by my myself.</p>
		<p>
			Feel free to contact me at <a href="https://www.linkedin.com/in/francesco-fornari-806556110/"
				>Linkedin</a
			>
			or by mail at
			<a href="mailto:francesco.fornari.96@gmail.com">francesco.fornari.96@gmail.com</a>
		</p>
	</div>

	<div>
		<p class="lang">ITA</p>
		<p>Sono uno sviluppatore che vive a Cuenca, Spagna</p>
		<p>
			Sono specializzato in Sviluppo Software, Sviluppo Software basato su Intelligenza Aritificiale
			e Gestione Dati
		</p>
		<p>
			Ho una laurea Triennale in Scienze Informatiche all'univerità di Bologna e ho lavorato dal
			2020 nel settore sviluppando software per aziende che aiutano le persone a capire meglio i
			prorpi dati
		</p>
		<p>
			I mei strumenti principali sono <b>Python</b>, SQL DB come <b>Postgres</b> o <b>Oracle</b>,
			NoSQL DB come <b>Mongo</b> e per lo sviluppo web <b>HTML, CSS and Javascript</b>.
		</p>
		<p>
			Sono madrelingua <b>Italiano</b>, so anche parlare fluentemente <b>Spagnolo</b> e
			<b>Inglese</b>.
		</p>
		<p>Questo è un sito creato e hostato da me.</p>
		<p>
			Se ti piace quello che faccio sentiti libero di contattarmi a <a
				href="https://www.linkedin.com/in/francesco-fornari-806556110/">Linkedin</a
			>
			via mail a <a href="mailto:francesco.fornari.96@gmail.com">francesco.fornari.96@gmail.com</a>
		</p>
	</div>
</div>

<style>
	:root {
		--animation-rotation-duration: 4s;
		--animation-fade-in-duration: 1s;
	}

	@keyframes fadein-and-rotate {
		0% {
			opacity: 0;
		}
		25% {
			transform: rotate(0deg);
			opacity: 1;
		}
		100% {
			transform: rotate(90deg);
		}
	}

	@keyframes fade-in {
		0% {
			opacity: 0;
		}
		100% {
			opacity: 1;
		}
	}

	@keyframes left-disappear {
		0% {
			left: 0;
		}
		100% {
			left: -30vw;
		}
	}

	@keyframes move-left {
		0% {
			margin-left: 15vh;
		}
		100% {
			margin-left: 0;
		}
	}

	#welcome {
		transform-origin: 10% 50%;
		animation-name: fadein-and-rotate;
		animation-duration: var(--animation-rotation-duration);
		animation-fill-mode: forwards;

		position: absolute;
		font-family: Allerta Stencil, serif;
		font-size: 15vh;
		margin: 0;
		left: 0;
	}

	#presentation {
		margin-left: 15vh;
		animation-name: fade-in;
		animation-duration: var(--animation-fade-in-duration);
		animation-delay: var(--animation-rotation-duration);
		animation-fill-mode: forwards;
		width: fit-content;
		opacity: 0;
	}

	@media (max-width: 768px) {
		#welcome {
			animation-name: fadein-and-rotate, left-disappear;
			animation-delay: 0s, var(--animation-rotation-duration);
			animation-duration: var(--animation-rotation-duration), var(--animation-fade-in-duration);
		}
		#presentation {
			animation-name: fade-in, move-left;
			animation-delay: var(--animation-rotation-duration), var(--animation-rotation-duration);
			animation-duration: var(--animation-rotation-duration), var(--animation-fade-in-duration);
		}
	}

	#presentation > div {
		margin-bottom: 1em;
	}

	h1 {
		font-size: 4em;
		margin: 0;
	}
	p {
		margin-top: 0;
		margin-bottom: 0.3em;
	}
	a {
		color: #ffffff;
		font-weight: bold;
	}
	.lang {
		color: #969696;
	}
</style>
