
with source as (

    select * from {{ source('raw_salesforce', 'fivetran_formula_history') }}

),

renamed as (

    select
        field,
        object,
        version,
        _fivetran_synced,
        formula,
        sql

    from source

)

select * from renamed
