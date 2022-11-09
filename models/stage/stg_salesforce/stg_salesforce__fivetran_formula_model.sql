
with source as (

    select * from {{ source('raw_salesforce', 'fivetran_formula_model') }}

),

renamed as (

    select
        object,
        _fivetran_synced,
        model

    from source

)

select * from renamed
