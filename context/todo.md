# Pendientes

Estado al 7 de agosto de 2026. La fuente de verdad sigue siendo
`context/master.txt`; este archivo solo lista lo que falta hacer.

---

## 1. Datos que faltan del Integrador (Go)

Es lo de mayor retorno. Hoy el CV afirma que el Integrador eliminó la
actualización manual de datos en producción, pero **sin ninguna cifra**.
Sería la segunda métrica fuerte del perfil, junto al 75% -> 98%.

- [ ] **Impacto medible**: cuántas intervenciones manuales por semana se
      eliminaron, cuántas horas del equipo de informática se liberaron, o
      cuántos errores se evitaron. Sirve un orden de magnitud aproximado.
- [ ] **Volumen concreto**: solicitudes o registros procesados por día u
      hora.
- [ ] **Observabilidad**: si había logs estructurados o métricas, y cómo
      se monitoreaba que el sistema estuviera sano.
- [ ] **Endpoints HTTP propios**: si expone alguno y con qué librería
      (net/http, chi, Gin, Echo).
- [ ] **Uso de `context`**: para timeouts y cancelación.

Al conseguir cualquiera de estos: agregarlo primero a `master.txt` y
después regenerar el CV.

---

## 2. CV de Python

No existe todavía. Requiere:

- [ ] Crear `context/context_py.txt` con la estructura de
      `context_go.txt`: puesto objetivo, jerarquía de logros, reglas de
      redacción, línea de tecnologías y qué se omite.
- [ ] Rehacer desde cero los fragmentos en `cv/fragments/python/`. Los
      archivos actuales (`experience_en.txt`, `tech_en.txt`) son de una
      versión antigua en inglés: dicen "June 2025 -- Present" para INDRA y
      no tienen ninguna de las correcciones aplicadas. **No editarlos,
      reemplazarlos.**
- [ ] Agregar `py_es` a `VERSIONS` en el Makefile y su regla de
      ensamblado (el procedimiento está en `master.txt`, sección
      "CÓMO AGREGAR UNA NUEVA VERSIÓN POR TECNOLOGÍA").

Material fuerte disponible para esta versión:
- ETL de 200 mil productos diarios (Coolebra)
- Scraping de 30+ retailers con ingeniería inversa (BeautifulSoup,
  Selenium)
- Listeners del event saga en INDRA
- Tutoría de POO III en Python (INACAP): en el CV Python **sube varios
  lugares** en la jerarquía, porque enseñar un lenguaje es evidencia más
  fuerte que usarlo. Además es el primer registro cronológico de Python
  en el perfil (nov 2021).

---

## 3. Verificaciones pendientes del CV Go

- [ ] Compilar y revisar el PDF. Los últimos cambios (resumen nuevo con
      "4 años de experiencia", cargo de Coolebra traducido a
      "Desarrollador de Software Junior") quedaron **sin compilar**.
- [ ] Confirmar que el resumen nuevo sigue ocupando 2 líneas. Es un poco
      más largo que el anterior; si se pasa a 3, puede empujar el
      contenido a una segunda página.

Recordar: contar páginas con `pdfinfo` no basta, hay que mirar el PNG
(`pdftoppm`). Un texto que se sale del área imprimible sigue reportando
el mismo número de páginas.

---

## 4. Cosas a revisar por cuenta propia

- [ ] **Perfil de GitHub**: un reclutador de Go va a entrar a
      `github.com/FelipeFa6`. Si no hay Go visible ahí, el CV pierde
      credibilidad de inmediato.
- [ ] **Dato sin respaldo**: el CV afirma que Petfi.io tiene "más de 11
      mil usuarios activos". Ese número venía de la plantilla original y
      **no está en `master.txt`**. Conviene confirmarlo o ajustarlo.
- [ ] **Referencias**: los tres contactos están en `master.txt` pero no
      aparecen en el CV (no hay sección de referencias en la plantilla
      actual). Decidir si se agregan o se entregan a pedido.

---

## 5. Brechas de stack (no son tareas de CV)

Keywords que aparecen seguido en vacantes Go y que **no** deben agregarse
al CV salvo que exista experiencia real:

    gRPC, Kubernetes, Gin/Echo/chi/Fiber, Kafka/RabbitMQ/NATS,
    Prometheus/Grafana

Si alguna se ha tocado aunque sea poco, avisar para evaluarla. Si no,
son candidatas a cerrar antes de postular a cargos senior.
